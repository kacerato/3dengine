.class public LV5/c$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV5/c;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LV5/c;


# direct methods
.method public constructor <init>(LV5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LV5/c$p;->a:LV5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, LV5/c$p;->a:LV5/c;

    invoke-virtual {v0, p1}, LV5/c;->b(I)V

    return-void
.end method
