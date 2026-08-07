.class public Lyd/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyd/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyd/d;->h(Lyd/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lyd/b$a;

.field public final synthetic c:Lyd/d;


# direct methods
.method public constructor <init>(Lyd/d;Lyd/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lyd/d$a;->c:Lyd/d;

    iput-object p2, p0, Lyd/d$a;->b:Lyd/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lyd/d$a;->a:I

    return-void
.end method


# virtual methods
.method public a(JJD)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "count",
            "max",
            "percent"
        }
    .end annotation

    double-to-int v0, p5

    iget-object v1, p0, Lyd/d$a;->b:Lyd/b$a;

    if-eqz v1, :cond_0

    iget v2, p0, Lyd/d$a;->a:I

    if-eq v0, v2, :cond_0

    iput v0, p0, Lyd/d$a;->a:I

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lyd/b$a;->a(JJD)V

    :cond_0
    return-void
.end method
