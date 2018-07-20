

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

    enum UserNameChange {
        struct Request {
            let newUserName: String
        }
        struct Response {
            let containsInvalidCharacters: Bool
            let isTooShort: Bool
            let isAlreadyTaken: Bool
        }
        struct ViewModel {
            let message: String?
        }
    }

    enum UserFullNameChange {
        struct Request {
            let newFullName: String
        }
        struct Response {
            let containsInvalidCharacters: Bool
            let isTooShort: Bool
            let isAlreadyTaken: Bool
        }
        struct ViewModel {
            let message: String?
        }
    }

    enum Cancellation {
        struct Request { }
        struct Response {
            let unsavedChanges: Bool
        }
        struct ViewModel {
            let message: String?
        }
    }

    enum Submit {
        struct Request { }
        struct Response {
            let error: SomeError
        }
        struct ViewModel {
            let message: String?
        }
    }
}