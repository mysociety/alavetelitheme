# See `doc/THEMES.md` for more explanation of this file
# This example adds a "transferred" state to requests.

module InfoRequestCustomStates

    def self.included(base)
        base.extend(ClassMethods)
    end

    # Work out what the situation of the request is. In addition to
    # values of self.described_state, in base Alaveteli can return
    # these (calculated) values:
    #   waiting_classification
    #   waiting_response_overdue
    #   waiting_response_very_overdue
    def theme_calculate_status
        # just fall back to the core calculation
        return self.base_calculate_status
    end

    # Mixin methods for InfoRequest
    module ClassMethods 
        def theme_display_status(status)
            if status == 'transferred'
                _("Transferred.")
            else
                raise _("unknown status ") + status        
            end
        end

        def theme_extra_states
            return ['transferred']
        end
    end
end

module RequestControllerCustomStates

    def theme_describe_state(info_request)
        # called after the core describe_state code.  It should
        # end by raising an error if the status is unknown
        if info_request.calculate_status == 'transferred'
            flash[:notice] = _("Authority has transferred your request to a different public body.")
            redirect_to request_url(@info_request)
        else
            raise "unknown calculate_status " + info_request.calculate_status
        end
    end

end
