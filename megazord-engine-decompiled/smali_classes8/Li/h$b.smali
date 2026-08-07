.class public LLi/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public final synthetic d:LLi/h;


# direct methods
.method public constructor <init>(LLi/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, LLi/h$b;->d:LLi/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 2
    new-array v0, p1, [I

    iput-object v0, p0, LLi/h$b;->a:[I

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, LLi/h$b;->b:[I

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, LLi/h$b;->c:[I

    return-void
.end method

.method public synthetic constructor <init>(LLi/h;LLi/h$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, LLi/h$b;-><init>(LLi/h;)V

    return-void
.end method
