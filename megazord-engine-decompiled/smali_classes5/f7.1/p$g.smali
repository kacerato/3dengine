.class public Lf7/p$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfa/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/p;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf7/p;


# direct methods
.method public constructor <init>(Lf7/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lf7/p$g;->a:Lf7/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lf7/p$g;->a:Lf7/p;

    invoke-static {v0}, Lf7/p;->m(Lf7/p;)Lf7/H;

    move-result-object v0

    invoke-virtual {v0}, Lf7/H;->b0()V

    return-void
.end method
