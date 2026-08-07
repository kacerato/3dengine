.class public Le6/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFc/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le6/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le6/b;


# direct methods
.method public constructor <init>(Le6/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Le6/b$a;->a:Le6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "total"
        }
    .end annotation

    iget-object v0, p0, Le6/b$a;->a:Le6/b;

    iput p1, v0, Le6/b;->f:I

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Le6/b$a;->a:Le6/b;

    iget v1, v0, Le6/b;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Le6/b;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le6/b$a;->a:Le6/b;

    iget v2, v2, Le6/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le6/b$a;->a:Le6/b;

    iget v2, v2, Le6/b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld6/b;->k(Ljava/lang/String;)V

    return-void
.end method
