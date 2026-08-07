.class public final LE1/w;
.super LZ0/a;
.source "SourceFile"


# annotations
.annotation build LZ0/c$a;
    creator = "LocationSettingsStatesCreator"
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
            "LE1/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z
    .annotation build LZ0/c$c;
        getter = "isGpsUsable"
        id = 0x1
    .end annotation
.end field

.field public final c:Z
    .annotation build LZ0/c$c;
        getter = "isNetworkLocationUsable"
        id = 0x2
    .end annotation
.end field

.field public final d:Z
    .annotation build LZ0/c$c;
        getter = "isBleUsable"
        id = 0x3
    .end annotation
.end field

.field public final e:Z
    .annotation build LZ0/c$c;
        getter = "isGpsPresent"
        id = 0x4
    .end annotation
.end field

.field public final f:Z
    .annotation build LZ0/c$c;
        getter = "isNetworkLocationPresent"
        id = 0x5
    .end annotation
.end field

.field public final g:Z
    .annotation build LZ0/c$c;
        getter = "isBlePresent"
        id = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE1/v0;

    invoke-direct {v0}, LE1/v0;-><init>()V

    sput-object v0, LE1/w;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 0
    .param p1    # Z
        .annotation build LZ0/c$e;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Z
        .annotation build LZ0/c$e;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Z
        .annotation build LZ0/c$e;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Z
        .annotation build LZ0/c$e;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Z
        .annotation build LZ0/c$e;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Z
        .annotation build LZ0/c$e;
            id = 0x6
        .end annotation
    .end param
    .annotation build LZ0/c$b;
    .end annotation

    invoke-direct {p0}, LZ0/a;-><init>()V

    iput-boolean p1, p0, LE1/w;->b:Z

    iput-boolean p2, p0, LE1/w;->c:Z

    iput-boolean p3, p0, LE1/w;->d:Z

    iput-boolean p4, p0, LE1/w;->e:Z

    iput-boolean p5, p0, LE1/w;->f:Z

    iput-boolean p6, p0, LE1/w;->g:Z

    return-void
.end method

.method public static b(Landroid/content/Intent;)LE1/w;
    .locals 2
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "com.google.android.gms.location.LOCATION_SETTINGS_STATES"

    sget-object v1, LE1/w;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v0, v1}, LZ0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LZ0/c;

    move-result-object p0

    check-cast p0, LE1/w;

    return-object p0
.end method


# virtual methods
.method public A0()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->c:Z

    return v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->g:Z

    return v0
.end method

.method public b0()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->d:Z

    return v0
.end method

.method public c0()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->e:Z

    return v0
.end method

.method public e0()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->b:Z

    return v0
.end method

.method public k0()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LE1/w;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public n0()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, LE1/w;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public s0()Z
    .locals 1

    iget-boolean v0, p0, LE1/w;->f:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, LZ0/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, LE1/w;->e0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0}, LE1/w;->A0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, LE1/w;->b0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, LE1/w;->c0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x5

    invoke-virtual {p0}, LE1/w;->s0()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x6

    invoke-virtual {p0}, LE1/w;->B()Z

    move-result v1

    invoke-static {p1, v0, v1}, LZ0/b;->g(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, LZ0/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
