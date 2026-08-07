.class public Lki/d;
.super Lri/f;
.source "SourceFile"


# instance fields
.field public final a:[Lri/d;

.field public b:I

.field public c:I

.field public d:Z


# direct methods
.method public varargs constructor <init>([Lri/d;)V
    .locals 1

    invoke-direct {p0}, Lri/f;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lki/d;->b:I

    iput v0, p0, Lki/d;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lki/d;->d:Z

    iput-object p1, p0, Lki/d;->a:[Lri/d;

    return-void
.end method


# virtual methods
.method public a(I)Lri/f;
    .locals 0

    iput p1, p0, Lki/d;->c:I

    return-object p0
.end method

.method public b(I)Lri/f;
    .locals 0

    iput p1, p0, Lki/d;->b:I

    return-object p0
.end method

.method public e()Lri/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lki/d;->d:Z

    return-object p0
.end method

.method public f()[Lri/d;
    .locals 1

    iget-object v0, p0, Lki/d;->a:[Lri/d;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lki/d;->c:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lki/d;->b:I

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lki/d;->d:Z

    return v0
.end method
