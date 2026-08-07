.class public Lwf/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Lcom/jme3/math/Vector3f;

.field public b:F

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lwf/b$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lwf/b$d;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lwf/b$f;

.field public f:Z

.field public g:I

.field public final synthetic h:Lwf/b;


# direct methods
.method public constructor <init>(Lwf/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lwf/b$f;->h:Lwf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lwf/b$f;->a:Lcom/jme3/math/Vector3f;

    const/high16 p1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 3
    iput p1, p0, Lwf/b$f;->b:F

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwf/b$f;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lwf/b$f;->d:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lwf/b;Lwf/b$a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lwf/b$f;-><init>(Lwf/b;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lwf/b$f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwf/b$f;->a:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
