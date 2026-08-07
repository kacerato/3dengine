.class public Ld5/d$k$b;
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

    iput-object p1, p0, Ld5/d$k$b;->c:Ld5/d$k;

    invoke-direct {p0, p2, p3}, Ld5/d$r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ld5/d$k$b;->c:Ld5/d$k;

    iget-object v0, v0, Ld5/d$k;->b:Ld5/d;

    invoke-static {v0}, Ld5/d;->s1(Ld5/d;)V

    return-void
.end method
