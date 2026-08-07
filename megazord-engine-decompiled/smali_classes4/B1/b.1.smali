.class public final LB1/b;
.super LZ0/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# annotations
.annotation build LZ0/c$a;
    creator = "FusedLocationProviderResultCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LB1/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:LB1/b;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;
    .annotation build LZ0/c$c;
        getter = "getStatus"
        id = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB1/b;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1}, LB1/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    sput-object v0, LB1/b;->c:LB1/b;

    new-instance v0, LB1/c;

    invoke-direct {v0}, LB1/c;-><init>()V

    sput-object v0, LB1/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, LB1/b;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, LB1/b;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, LB1/b;->b:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, LZ0/b;->S(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
