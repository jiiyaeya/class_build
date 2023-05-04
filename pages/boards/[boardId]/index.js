import { useRouter } from "next/router";

export default function BoardPage() {
  const router = useRouter();
  return (
    <>
      <div>+++++++동적페이지+++++++</div>
      <div>게시글 아이디: {router.query.boardId}</div>
    </>
  );
}
// //서버사이드렌더링
// export const getServerSideProps = () => {
//   // 만약 서버사이드 렌더링 하는 페이지라면?
//   // => out폴더로 생성 불가
//   // => 이런경우, next.config.json에서 exportPathMap을 사용해서 현페이지 제외시키기
// };
