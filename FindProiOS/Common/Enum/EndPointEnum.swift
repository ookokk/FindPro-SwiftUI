//
//  EndPointEnum.swift
//  FindProiOS
//
//  Created by Osman Kök on 20.04.2025.
//

import Foundation

enum EndPointEnum: String {
    case register = "/register"
    case login = "/login"
    case userProfile = "/user/profile"
    case userUpdate = "/user/updateProfile"
    case userUpdatePassword = "/user/updatePassword"
    case userChangeCountry = "/user/changeCountry"
    case userList = "/user/list"
    case userRemoveAccount = "/user/removeAccount"
    case commentAdd = "/comment/add"
    case commentGetComments = "/comment/getComments"
    case commentDelete = "/comment/delete"
    case followFollow = "/follow/"
    case followFollowing = "/follow/following/"
    case followFollowers = "/follow/followers/"
    case followCount = "/follow/count/"
    case jobAdd = "/job/add"
    case jobDelete = "/job/delete"
    case jobComplete = "/job/complete"
    case jobGetUserJobs = "/job/getUserJobs"
    case jobHomeJobs = "/job/homeJobs"
    case jobGetMultipleJobs = "/job/getMultipleJobs"
    case jobGet = "/job/get"
    case loginWithGoogle = "/login/google"
    case loginWithApple = "/login/apple"
    case messageStartChatRoom = "/message/startChatRoom"
    case messageChatRooms = "/message/chatRooms"
    case messageDeleteRoom = "/message/deleteRoom"
    case photoProfile = "/photo/profilePicture"
    case photoCover = "/photo/coverPicture"
    case registerWithGoogle = "/register/google"
    case registerWithApple = "/register/apple"
    case searchJob = "/search"
    case searchUser = "/search/user"
    case supportUser = "/support/user"
    case supportComment = "/support/comment"
    case supportGeneral = "/support/general"
    case block = "/block"
    case blockList = "/block/list"
}
