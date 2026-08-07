.class public LO6/b$c$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI7/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$c$a$a$a;->b(Lr7/c$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LO6/b$c$a$a$a;


# direct methods
.method public constructor <init>(LO6/b$c$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, LO6/b$c$a$a$a$a;->a:LO6/b$c$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LI7/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loading"
        }
    .end annotation

    new-instance v0, LO6/b$c$a$a$a$a$a;

    invoke-direct {v0, p0, p1}, LO6/b$c$a$a$a$a$a;-><init>(LO6/b$c$a$a$a$a;LI7/a;)V

    invoke-static {v0}, Lga/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
