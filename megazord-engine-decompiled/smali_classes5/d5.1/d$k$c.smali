.class public Ld5/d$k$c;
.super Ld5/d$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld5/d$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ld5/d$k;


# direct methods
.method public constructor <init>(Ld5/d$k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$1",
            "name",
            "info"
        }
    .end annotation

    iput-object p1, p0, Ld5/d$k$c;->c:Ld5/d$k;

    invoke-direct {p0, p2, p3}, Ld5/d$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ld5/d$k$c;->c:Ld5/d$k;

    iget-object v0, v0, Ld5/d$k;->b:Ld5/d;

    new-instance v1, Le5/b;

    invoke-direct {v1}, Le5/b;-><init>()V

    invoke-static {v0, v1}, Ld5/d;->t1(Ld5/d;Le5/a;)V

    return-void
.end method
