.class public LFi/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:LFi/f;

.field public final b:F

.field public final synthetic c:LFi/e;


# direct methods
.method public constructor <init>(LFi/e;LFi/f;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "agent",
            "dist"
        }
    .end annotation

    iput-object p1, p0, LFi/e$a;->c:LFi/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LFi/e$a;->a:LFi/f;

    iput p3, p0, LFi/e$a;->b:F

    return-void
.end method
