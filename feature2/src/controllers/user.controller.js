import { response } from "../../config/response.js";
import { status } from "../../config/response.status.js";
import { joinUser, addUserMission } from "../services/user.service.js";
import { getReview } from "../providers/user.provider.js";

export const userSignin = async (req, res, next) => {
    console.log("회원가입을 요청하였습니다!");
    console.log("body:", req.body); // 값이 잘 들어오나 찍어보기 위한 테스트용

    res.send(response(status.SUCCESS, await joinUser(req.body)));
}

export const userMission = async (req, res, next) => {
    console.log("미션 추가를 요청하였습니다!");
    console.log("body:", req.body); // 값이 잘 들어오나 찍어보기 위한 테스트용

    res.send(response(status.SUCCESS, await addUserMission(req.body)));
}

export const reviewPreview = async (req, res, next) => {
    console.log("리뷰 조회를 요청하였습니다!");

    return res.send(response(status.SUCCESS, await getReview(req.params.userId, req.query)));
}