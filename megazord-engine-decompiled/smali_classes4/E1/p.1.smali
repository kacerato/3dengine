.class public LE1/p;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "GeofencingRequestCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE1/p$a;,
        LE1/p$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/p;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x4


# instance fields
.field public final b:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getParcelableGeofences"
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LB1/G;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I
    .annotation build LE1/p$b;
    .end annotation

    .annotation build LZ0/c$c;
        getter = "getInitialTrigger"
        id = 0x2
    .end annotation
.end field

.field public final d:Ljava/lang/String;
    .annotation build LZ0/c$c;
        defaultValue = ""
        getter = "getTag"
        id = 0x3
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build LZ0/c$c;
        getter = "getContextAttributionTag"
        id = 0x4
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/b0;

    invoke-direct {v0}, LE1/b0;-><init>()V

    sput-object v0, LE1/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LE1/p$b;
        .end annotation

        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LB1/G;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-object p1, p0, LE1/p;->b:Ljava/util/List;

    iput p2, p0, LE1/p;->c:I

    iput-object p3, p0, LE1/p;->d:Ljava/lang/String;

    iput-object p4, p0, LE1/p;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LE1/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, LE1/p;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public b0()I
    .locals 1
    .annotation build LE1/p$b;
    .end annotation

    iget v0, p0, LE1/p;->c:I

    return v0
.end method

.method public final c0(Ljava/lang/String;)LE1/p;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, LE1/p;

    iget-object v1, p0, LE1/p;->b:Ljava/util/List;

    iget v2, p0, LE1/p;->c:I

    iget-object v3, p0, LE1/p;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, LE1/p;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeofencingRequest[geofences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LE1/p;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LE1/p;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LE1/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", attributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LE1/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, LE1/p;->b:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LE1/p;->b0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-object v1, p0, LE1/p;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, LE1/p;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, LZ0/b;->Y(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
