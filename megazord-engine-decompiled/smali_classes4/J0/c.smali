.class public LJ0/c;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "AccountChangeEventsResponseCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LJ0/c;",
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

.field public final c:Ljava/util/List;
    .annotation build LZ0/c$c;
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ0/i;

    invoke-direct {v0}, LJ0/i;-><init>()V

    sput-object v0, LJ0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .line 1
    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, LJ0/c;->b:I

    .line 2
    invoke-static {p2}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, LJ0/c;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LJ0/a;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, LZ0/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LJ0/c;->b:I

    .line 4
    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, LJ0/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJ0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LJ0/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, LJ0/c;->b:I

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    iget-object v0, p0, LJ0/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
