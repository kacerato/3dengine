.class public LO/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LA/a$a;LA/c;Ljava/nio/ByteBuffer;I)LA/a;
    .locals 1

    new-instance v0, LA/f;

    invoke-direct {v0, p1, p2, p3, p4}, LA/f;-><init>(LA/a$a;LA/c;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method
