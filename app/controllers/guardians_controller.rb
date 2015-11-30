class GuardiansController < InheritedResources::Base

  private

    def guardian_params
      params.require(:guardian).permit(:first_name, :last_name, :email)
    end
end

