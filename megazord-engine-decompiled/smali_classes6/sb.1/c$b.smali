.class public Lsb/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsb/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lsb/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lsb/c;->b()Lu7/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lsb/c;->b()Lu7/c;

    move-result-object v0

    new-instance v1, Lsb/c$b$a;

    invoke-direct {v1, p0}, Lsb/c$b$a;-><init>(Lsb/c$b;)V

    iput-object v1, v0, Lu7/c;->b:Lu7/b;

    invoke-static {}, Lsb/c;->b()Lu7/c;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lu7/c;->s(F)Lu7/c;

    const/4 v0, 0x0

    invoke-static {v0}, Lsb/c;->c(Lu7/c;)Lu7/c;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NormalMaps -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsb/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Lsb/c;->d(I)I

    const/4 v0, 0x0

    invoke-static {v0}, Lsb/c;->c(Lu7/c;)Lu7/c;

    return-void
.end method
