.class public final Lg1/d;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "StringToIntConverterEntryCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg1/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I
    .annotation build LZ0/c$h;
        id = 0x1
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build LZ0/c$c;
        id = 0x2
    .end annotation
.end field

.field public final d:I
    .annotation build LZ0/c$c;
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg1/f;

    invoke-direct {v0}, Lg1/f;-><init>()V

    sput-object v0, Lg1/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # I
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .line 1
    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, Lg1/d;->b:I

    iput-object p2, p0, Lg1/d;->c:Ljava/lang/String;

    iput p3, p0, Lg1/d;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, LZ0/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lg1/d;->b:I

    iput-object p1, p0, Lg1/d;->c:Ljava/lang/String;

    iput p2, p0, Lg1/d;->d:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget p2, p0, Lg1/d;->b:I

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, LZ0/b;->F(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lg1/d;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, p2, v1}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x3

    iget v1, p0, Lg1/d;->d:I

    invoke-static {p1, p2, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
