.class public Lz7/b$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/b$d$a;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lz7/b$d$a;


# direct methods
.method public constructor <init>(Lz7/b$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lz7/b$d$a$a;->b:Lz7/b$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lz7/b$d$a$a;->b:Lz7/b$d$a;

    iget-object v0, v0, Lz7/b$d$a;->a:Lz7/b$d;

    iget-object v0, v0, Lz7/b$d;->e:Lz7/b;

    invoke-static {v0}, Lz7/b;->b(Lz7/b;)V

    return-void
.end method
