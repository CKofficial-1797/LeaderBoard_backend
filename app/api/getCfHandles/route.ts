import { corsHeaders } from "@/lib/cors";
import prisma from "@/lib/prisma";
import { NextResponse } from "next/server";

export const dynamic = "force-dynamic";
export const revalidate = 60; // 1 minute

export async function GET() {
  try {
    const cfHandles = await prisma.cf_account.findMany();
    return new Response(JSON.stringify(cfHandles), {
      status: 200,
      headers: corsHeaders,
    });
  } catch (err) {
    return new NextResponse("error fetching cf handles", {
      status: 500,
      headers: corsHeaders,
    });
  }
}
