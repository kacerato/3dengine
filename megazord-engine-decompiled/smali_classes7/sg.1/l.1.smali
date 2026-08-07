.class public final Lsg/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LFf/T0;
    markerClass = {
        LFf/w;
    }
.end annotation

.annotation build LFf/l0;
    version = "2.2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/l$a;,
        Lsg/l$b;,
        Lsg/l$c;,
        Lsg/l$d;
    }
.end annotation


# static fields
.field public static final d:Lsg/l$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:Lsg/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lsg/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Lsg/l$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lsg/l$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lsg/l$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsg/l$c;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lsg/l;->d:Lsg/l$c;

    new-instance v0, Lsg/l;

    sget-object v1, Lsg/l$b;->j:Lsg/l$b$b;

    invoke-virtual {v1}, Lsg/l$b$b;->a()Lsg/l$b;

    move-result-object v2

    sget-object v3, Lsg/l$d;->h:Lsg/l$d$b;

    invoke-virtual {v3}, Lsg/l$d$b;->a()Lsg/l$d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v2, v4}, Lsg/l;-><init>(ZLsg/l$b;Lsg/l$d;)V

    sput-object v0, Lsg/l;->e:Lsg/l;

    new-instance v0, Lsg/l;

    invoke-virtual {v1}, Lsg/l$b$b;->a()Lsg/l$b;

    move-result-object v1

    invoke-virtual {v3}, Lsg/l$d$b;->a()Lsg/l$d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lsg/l;-><init>(ZLsg/l$b;Lsg/l$d;)V

    sput-object v0, Lsg/l;->f:Lsg/l;

    return-void
.end method

.method public constructor <init>(ZLsg/l$b;Lsg/l$d;)V
    .locals 1
    .param p2    # Lsg/l$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lsg/l$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lsg/l;->a:Z

    iput-object p2, p0, Lsg/l;->b:Lsg/l$b;

    iput-object p3, p0, Lsg/l;->c:Lsg/l$d;

    return-void
.end method

.method public static final synthetic a()Lsg/l;
    .locals 1

    sget-object v0, Lsg/l;->e:Lsg/l;

    return-object v0
.end method

.method public static final synthetic b()Lsg/l;
    .locals 1

    sget-object v0, Lsg/l;->f:Lsg/l;

    return-object v0
.end method


# virtual methods
.method public final c()Lsg/l$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/l;->b:Lsg/l$b;

    return-object v0
.end method

.method public final d()Lsg/l$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lsg/l;->c:Lsg/l$d;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lsg/l;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HexFormat("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "    upperCase = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lsg/l;->a:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "    bytes = BytesHexFormat("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsg/l;->b:Lsg/l$b;

    const-string v3, "        "

    invoke-virtual {v2, v0, v3}, Lsg/l$b;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "    ),"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "    number = NumberHexFormat("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsg/l;->c:Lsg/l$d;

    invoke-virtual {v2, v0, v3}, Lsg/l$d;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "    )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
