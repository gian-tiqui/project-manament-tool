import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

const GET = async () => {
  const projects = await prisma.project.findMany();

  return NextResponse.json({
    data: projects,
  });
};

export { GET };