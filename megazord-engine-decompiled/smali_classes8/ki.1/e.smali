.class public Lki/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpi/A;

.field public final b:I

.field public final c:Z

.field public final d:Lki/e;

.field public final e:Lki/f;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lpi/A;ILki/e;Lki/f;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lki/e;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lki/e;->g:Z

    iput-object p1, p0, Lki/e;->a:Lpi/A;

    iput p2, p0, Lki/e;->b:I

    iput-boolean p5, p0, Lki/e;->c:Z

    iput-object p3, p0, Lki/e;->d:Lki/e;

    iput-object p4, p0, Lki/e;->e:Lki/f;

    return-void
.end method

.method public static a(Lpi/A;ILki/e;Lki/f;)Lki/e;
    .locals 7

    new-instance v6, Lki/e;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lki/e;-><init>(Lpi/A;ILki/e;Lki/f;Z)V

    return-object v6
.end method

.method public static b(Lpi/A;ILki/e;Lki/f;)Lki/e;
    .locals 7

    new-instance v6, Lki/e;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lki/e;-><init>(Lpi/A;ILki/e;Lki/f;Z)V

    return-object v6
.end method
