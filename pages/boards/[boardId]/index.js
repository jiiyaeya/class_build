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
