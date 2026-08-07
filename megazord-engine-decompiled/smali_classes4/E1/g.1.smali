.class public LE1/g;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "ActivityTransitionResultCreator"
.end annotation

.annotation build LZ0/c$g;
    value = {
        0x3e8
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LE1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;
    .annotation build LZ0/c$c;
        getter = "getTransitionEvents"
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LE1/e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/os/Bundle;
    .annotation build LZ0/c$c;
        getter = "getExtras"
        id = 0x2
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/U0;

    invoke-direct {v0}, LE1/U0;-><init>()V

    sput-object v0, LE1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LE1/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, LZ0/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LE1/g;->c:Landroid/os/Bundle;

    const-string v0, "transitionEvents list can\'t be null."

    .line 2
    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE1/e;

    invoke-virtual {v2}, LE1/e;->b0()J

    move-result-wide v2

    add-int/lit8 v4, v1, -0x1

    .line 6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LE1/e;

    invoke-virtual {v4}, LE1/e;->b0()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-static {v2}, LX0/A;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, LE1/g;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation

        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LX0/F;
    .end annotation

    .annotation build LZ0/c$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LE1/e;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, LE1/g;-><init>(Ljava/util/List;)V

    iput-object p2, p0, LE1/g;->c:Landroid/os/Bundle;

    return-void
.end method

.method public static b(Landroid/content/Intent;)LE1/g;
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, LE1/g;->b0(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT"

    sget-object v1, LE1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, LZ0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object p0

    check-cast p0, LE1/g;

    return-object p0
.end method

.method public static b0(Landroid/content/Intent;)Z
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_TRANSITION_RESULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
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
            "LE1/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LE1/g;->b:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LE1/g;->b:Ljava/util/List;

    check-cast p1, LE1/g;

    iget-object p1, p1, LE1/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LE1/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, LE1/g;->B()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LZ0/b;->d0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x2

    iget-object v1, p0, LE1/g;->c:Landroid/os/Bundle;

    invoke-static {p1, v0, v1, v2}, LZ0/b;->k(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
