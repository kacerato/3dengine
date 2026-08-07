.class public LRi/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LRi/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:LRi/c;

.field public final d:LRi/f;

.field public final e:LRi/k;

.field public final f:LRi/l;

.field public final g:LRi/h;

.field public final h:LRi/N;


# direct methods
.method public constructor <init>(IILRi/h;LRi/c;LRi/f;LRi/k;LRi/l;LRi/N;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tileX",
            "tileZ",
            "solid",
            "chf",
            "cs",
            "pmesh",
            "dmesh",
            "ctx"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LRi/p$b;->a:I

    iput p2, p0, LRi/p$b;->b:I

    iput-object p3, p0, LRi/p$b;->g:LRi/h;

    iput-object p4, p0, LRi/p$b;->c:LRi/c;

    iput-object p5, p0, LRi/p$b;->d:LRi/f;

    iput-object p6, p0, LRi/p$b;->e:LRi/k;

    iput-object p7, p0, LRi/p$b;->f:LRi/l;

    iput-object p8, p0, LRi/p$b;->h:LRi/N;

    return-void
.end method


# virtual methods
.method public a()LRi/c;
    .locals 1

    iget-object v0, p0, LRi/p$b;->c:LRi/c;

    return-object v0
.end method

.method public b()LRi/f;
    .locals 1

    iget-object v0, p0, LRi/p$b;->d:LRi/f;

    return-object v0
.end method

.method public c()LRi/k;
    .locals 1

    iget-object v0, p0, LRi/p$b;->e:LRi/k;

    return-object v0
.end method

.method public d()LRi/l;
    .locals 1

    iget-object v0, p0, LRi/p$b;->f:LRi/l;

    return-object v0
.end method

.method public e()LRi/h;
    .locals 1

    iget-object v0, p0, LRi/p$b;->g:LRi/h;

    return-object v0
.end method

.method public f()LRi/N;
    .locals 1

    iget-object v0, p0, LRi/p$b;->h:LRi/N;

    return-object v0
.end method
