.class public LTb/f$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/S;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LTb/f$a$b;->b(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LTb/f$a$b;


# direct methods
.method public constructor <init>(LTb/f$a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LTb/f$a$b$a;->a:LTb/f$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LTb/f;->e()Lye/O;

    move-result-object v0

    invoke-virtual {v0, p1}, Lye/O;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method
