

enum EditProfileSceneModel: SceneModel {

    enum UserData {
        struct Request { }
        struct Response {
            let user: User
        }
        struct ViewModel {
            let image: UIImage
            let userName: String
            let fullName: String
        }
    }

    enum UserImageChange {
        struct Request {
            let newImage: UIImage
        }
        struct Response {
            let uploadProgress: Double
        }
        struct ViewModel {
            let message: String?
        }
    }
}