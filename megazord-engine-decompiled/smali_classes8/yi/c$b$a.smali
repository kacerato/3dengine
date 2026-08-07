.class public final Lyi/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lyi/c$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lyi/c$b;
    .locals 2

    const-string v0, "in"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lyi/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lyi/c$b;-><init>(Landroid/os/Parcel;Lkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public b(I)[Lyi/c$b;
    .locals 0

    new-array p1, p1, [Lyi/c$b;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lyi/c$b$a;->a(Landroid/os/Parcel;)Lyi/c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lyi/c$b$a;->b(I)[Lyi/c$b;

    move-result-object p1

    return-object p1
.end method
