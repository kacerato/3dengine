.class public Lc8/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lc8/b$d;

.field public b:Lc8/b$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc8/b$d;Lc8/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "filter",
            "search"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc8/b$c;->a:Lc8/b$d;

    .line 4
    iput-object p2, p0, Lc8/b$c;->b:Lc8/b$d;

    return-void
.end method


# virtual methods
.method public a()Lc8/b$d;
    .locals 1

    iget-object v0, p0, Lc8/b$c;->a:Lc8/b$d;

    return-object v0
.end method

.method public b()Lc8/b$d;
    .locals 1

    iget-object v0, p0, Lc8/b$c;->b:Lc8/b$d;

    return-object v0
.end method

.method public c(Lc8/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    iput-object p1, p0, Lc8/b$c;->a:Lc8/b$d;

    return-void
.end method

.method public d(Lc8/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "search"
        }
    .end annotation

    iput-object p1, p0, Lc8/b$c;->b:Lc8/b$d;

    return-void
.end method
