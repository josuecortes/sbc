Rails.application.routes.draw do
  resources :transacaos do
    post :notificacao_pagseguro, on: :collection
  end
  get 'site/index'
  get 'site/criar_transacao'

  resources :empresas do 
    resources :planos do
      get 'usuarios'
      get 'adicionar'
      get 'remover'
    end 
  end
  resources :usuarios do
    get :redefinir_senha
    get :planos
  end
  get 'home/index'
  get 'home/nao_autorizado'
  get 'home/meus_planos'
  get 'home/usuario_planos'
  get 'home/adicionar_usuario_plano'
  get 'home/remover_usuario_plano'
  get 'home/minha_empresa'
  put 'home/atualizar_empresa'
  post 'home/bem_vindo'


  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    unauthenticated do
      root 'site#index', as: :unauthenticated_root
    end
  end
  namespace :banco do 
    resources :composicoes, only: [:index] do
      collection do
        get   :busca, :relatorio_analitico
        post  :busca
      end
    end
    namespace :sbc do
      resources :composicoes do
        collection do
          get   :relatorio_analitico
          post  :copiar
        end
      end
      resources :insumos, only: [:index]
    end


    namespace :emp do
      resources :insumos, except: [:index] do
        member do
          get  :edit_valores
          post  :update_valores
        end
      end
      resources :composicoes, except: [:index] do
        
        collection do
          get   :add_subitem, :edit_itens, :autocompletar, :modelo_sicro_3_autocompletar, :excluir_subitem, :update_quantidade, :relatorio, :relatorio_analitico
          post  :copiar, :criar_insumo, :add_subitem, :update_quantidade
        end

        member do
          get :adiconar_insumo_proprio
          post :salvar_insumo_proprio
        end

        get :autocomplete_dados_insumos_proprios, :on => :collection    
        get :autocomplete_dados_insumos_sbc, :on => :collection
        get :autocomplete_dados_composicoes_proprias, :on => :collection
        get :autocomplete_dados_composicoes_sbc, :on => :collection
        
      end
    end
    
  end
end
