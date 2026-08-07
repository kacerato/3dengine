.class public abstract Lri/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lri/f;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs d([Lri/d;)Lri/f;
    .locals 1

    new-instance v0, Lki/d;

    invoke-direct {v0, p0}, Lki/d;-><init>([Lri/d;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Lri/f;
.end method

.method public abstract b(I)Lri/f;
.end method

.method public abstract e()Lri/f;
.end method
