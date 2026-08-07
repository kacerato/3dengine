.class public LE1/d;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "ActivityTransitionCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE1/d$a;,
        LE1/d$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:I = 0x0

.field public static final e:I = 0x1


# instance fields
.field public final b:I
    .annotation build LZ0/c$c;
        getter = "getActivityType"
        id = 0x1
    .end annotation
.end field

.field public final c:I
    .annotation build LZ0/c$c;
        getter = "getTransitionType"
        id = 0x2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/Q0;

    invoke-direct {v0}, LE1/Q0;-><init>()V

    sput-object v0, LE1/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # I
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput p1, p0, LE1/d;->b:I

    iput p2, p0, LE1/d;->c:I

    return-void
.end method

.method public static c0(I)V
    .locals 3

    const/4 v0, 0x0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Transition type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not valid."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LX0/A;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, LE1/d;->b:I

    return v0
.end method

.method public b0()I
    .locals 1

    iget v0, p0, LE1/d;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LE1/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LE1/d;

    iget v1, p0, LE1/d;->b:I

    iget v3, p1, LE1/d;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, LE1/d;->c:I

    iget p1, p1, LE1/d;->c:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LE1/d;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, LE1/d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LX0/y;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget v0, p0, LE1/d;->b:I

    iget v1, p0, LE1/d;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ActivityTransition [mActivityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mTransitionType="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, LE1/d;->B()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LE1/d;->b0()I

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->F(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
