.class public Lv8/j$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv8/j;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv8/j;


# direct methods
.method public constructor <init>(Lv8/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lv8/j$k;->a:Lv8/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, Lf8/c;->o()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lv8/j;->n0(Landroid/app/Activity;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lv8/j;->t0()V

    return-void
.end method
