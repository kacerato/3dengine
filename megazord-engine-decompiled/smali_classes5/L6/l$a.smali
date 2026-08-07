.class public LL6/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL6/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LL6/l;->g(Ljava/lang/String;)LL6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LL6/l;


# direct methods
.method public constructor <init>(LL6/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LL6/l$a;->a:LL6/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, LL6/l$a;->a:LL6/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LL6/l;->a(LL6/l;LL6/e;)LL6/e;

    return-void
.end method
