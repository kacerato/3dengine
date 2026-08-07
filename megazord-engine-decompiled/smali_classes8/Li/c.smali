.class public LLi/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:LLi/m;

.field public d:[B

.field public e:I

.field public f:I

.field public g:LLi/c;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LLi/c;->a:I

    const/4 p1, 0x1

    iput p1, p0, LLi/c;->b:I

    return-void
.end method
