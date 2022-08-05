import type { NextPage } from "next";
import { useEffect, useState } from "react";
import axios from "axios";

const Blogs: NextPage = ({ data }: any) => {
  return (
    <div>
      <h1>Hello</h1>
      {data.map((blog, index) => {
        return <h1 key={index}>{blog.title}</h1>;
      })}
    </div>
  );
};

export async function getServerSideProps({ req, res }) {
  const blogs = await axios(`http://localhost:3000/api/v1/blogs`);
  res.setHeader(
    "Cache-Control",
    "public, s-maxage=20, stale-while-revalidate=59"
  );
  return { props: { data: blogs.data } };
}

export default Blogs;
