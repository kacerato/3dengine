.class public Lwf/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lwf/b$f;

.field public b:F

.field public c:I

.field public final synthetic d:Lwf/b;


# direct methods
.method public constructor <init>(Lwf/b;Lwf/b$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lwf/b$c;->d:Lwf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput p1, p0, Lwf/b$c;->b:F

    iput-object p2, p0, Lwf/b$c;->a:Lwf/b$f;

    return-void
.end method


# virtual methods
.method public a(Lwf/b$c;)V
    .locals 1

    iget-object v0, p1, Lwf/b$c;->a:Lwf/b$f;

    iput-object v0, p0, Lwf/b$c;->a:Lwf/b$f;

    iget v0, p1, Lwf/b$c;->b:F

    iput v0, p0, Lwf/b$c;->b:F

    iget p1, p1, Lwf/b$c;->c:I

    iput p1, p0, Lwf/b$c;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lwf/b$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lwf/b$c;->a:Lwf/b$f;

    check-cast p1, Lwf/b$c;

    iget-object p1, p1, Lwf/b$c;->a:Lwf/b$f;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lwf/b$c;->a:Lwf/b$f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Edge{collapseTo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwf/b$c;->a:Lwf/b$f;

    iget v1, v1, Lwf/b$f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
