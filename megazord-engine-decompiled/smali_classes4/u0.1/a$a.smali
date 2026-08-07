.class public final Lu0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lu0/f;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu0/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lu0/b;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu0/a$a;->a:Lu0/f;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lu0/a$a;->b:Ljava/util/List;

    iput-object v0, p0, Lu0/a$a;->c:Lu0/b;

    const-string v0, ""

    iput-object v0, p0, Lu0/a$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lu0/d;)Lu0/a$a;
    .locals 1

    iget-object v0, p0, Lu0/a$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lu0/a;
    .locals 5

    new-instance v0, Lu0/a;

    iget-object v1, p0, Lu0/a$a;->a:Lu0/f;

    iget-object v2, p0, Lu0/a$a;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lu0/a$a;->c:Lu0/b;

    iget-object v4, p0, Lu0/a$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lu0/a;-><init>(Lu0/f;Ljava/util/List;Lu0/b;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lu0/a$a;
    .locals 0

    iput-object p1, p0, Lu0/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Lu0/b;)Lu0/a$a;
    .locals 0

    iput-object p1, p0, Lu0/a$a;->c:Lu0/b;

    return-object p0
.end method

.method public e(Ljava/util/List;)Lu0/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu0/d;",
            ">;)",
            "Lu0/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lu0/a$a;->b:Ljava/util/List;

    return-object p0
.end method

.method public f(Lu0/f;)Lu0/a$a;
    .locals 0

    iput-object p1, p0, Lu0/a$a;->a:Lu0/f;

    return-object p0
.end method
