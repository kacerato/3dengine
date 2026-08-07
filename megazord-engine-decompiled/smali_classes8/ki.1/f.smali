.class public Lki/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi/b;


# instance fields
.field public final a:Lpi/A;

.field public final b:C

.field public final c:Z

.field public final d:Z

.field public e:Lki/f;

.field public f:Lki/f;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Lpi/A;CZZLki/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lki/f;->g:I

    iput v0, p0, Lki/f;->h:I

    iput-object p1, p0, Lki/f;->a:Lpi/A;

    iput-char p2, p0, Lki/f;->b:C

    iput-boolean p3, p0, Lki/f;->c:Z

    iput-boolean p4, p0, Lki/f;->d:Z

    iput-object p5, p0, Lki/f;->e:Lki/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lki/f;->d:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lki/f;->h:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lki/f;->c:Z

    return v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lki/f;->g:I

    return v0
.end method
