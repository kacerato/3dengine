.class public LT4/a$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT4/a;->m(LT4/a$f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LU4/b;

.field public final synthetic c:LU4/c;

.field public final synthetic d:LT4/a;


# direct methods
.method public constructor <init>(LT4/a;LU4/b;LU4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$backup",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, LT4/a$a;->d:LT4/a;

    iput-object p2, p0, LT4/a$a;->b:LU4/b;

    iput-object p3, p0, LT4/a$a;->c:LU4/c;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LT4/a$a;->d:LT4/a;

    iget-object v1, p0, LT4/a$a;->b:LU4/b;

    iget-object v2, p0, LT4/a$a;->c:LU4/c;

    invoke-static {v0, p1, v1, v2}, LT4/a;->g(LT4/a;Landroid/view/View;LU4/b;LU4/c;)V

    return-void
.end method
