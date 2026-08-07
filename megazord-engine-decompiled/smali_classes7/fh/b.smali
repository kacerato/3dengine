.class public final Lfh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfh/b$a;
    }
.end annotation


# static fields
.field public static final d:Llh/f;

.field public static final e:Ljava/lang/String; = ":status"

.field public static final f:Ljava/lang/String; = ":method"

.field public static final g:Ljava/lang/String; = ":path"

.field public static final h:Ljava/lang/String; = ":scheme"

.field public static final i:Ljava/lang/String; = ":authority"

.field public static final j:Llh/f;

.field public static final k:Llh/f;

.field public static final l:Llh/f;

.field public static final m:Llh/f;

.field public static final n:Llh/f;


# instance fields
.field public final a:Llh/f;

.field public final b:Llh/f;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lfh/b;->d:Llh/f;

    const-string v0, ":status"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lfh/b;->j:Llh/f;

    const-string v0, ":method"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lfh/b;->k:Llh/f;

    const-string v0, ":path"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lfh/b;->l:Llh/f;

    const-string v0, ":scheme"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lfh/b;->m:Llh/f;

    const-string v0, ":authority"

    invoke-static {v0}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object v0

    sput-object v0, Lfh/b;->n:Llh/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object p1

    invoke-static {p2}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lfh/b;-><init>(Llh/f;Llh/f;)V

    return-void
.end method

.method public constructor <init>(Llh/f;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Llh/f;->m(Ljava/lang/String;)Llh/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lfh/b;-><init>(Llh/f;Llh/f;)V

    return-void
.end method

.method public constructor <init>(Llh/f;Llh/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lfh/b;->a:Llh/f;

    .line 5
    iput-object p2, p0, Lfh/b;->b:Llh/f;

    .line 6
    invoke-virtual {p1}, Llh/f;->R()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Llh/f;->R()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lfh/b;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lfh/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lfh/b;

    iget-object v0, p0, Lfh/b;->a:Llh/f;

    iget-object v2, p1, Lfh/b;->a:Llh/f;

    invoke-virtual {v0, v2}, Llh/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfh/b;->b:Llh/f;

    iget-object p1, p1, Lfh/b;->b:Llh/f;

    invoke-virtual {v0, p1}, Llh/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfh/b;->a:Llh/f;

    invoke-virtual {v0}, Llh/f;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lfh/b;->b:Llh/f;

    invoke-virtual {v0}, Llh/f;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfh/b;->a:Llh/f;

    invoke-virtual {v0}, Llh/f;->a0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfh/b;->b:Llh/f;

    invoke-virtual {v1}, Llh/f;->a0()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, LYg/c;->s(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
