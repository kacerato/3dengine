.class public final Lah/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lah/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:[Llh/y;

.field public final e:[J

.field public final synthetic f:Lah/d;


# direct methods
.method public constructor <init>(Lah/d;Ljava/lang/String;J[Llh/y;[J)V
    .locals 0

    iput-object p1, p0, Lah/d$f;->f:Lah/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lah/d$f;->b:Ljava/lang/String;

    iput-wide p3, p0, Lah/d$f;->c:J

    iput-object p5, p0, Lah/d$f;->d:[Llh/y;

    iput-object p6, p0, Lah/d$f;->e:[J

    return-void
.end method

.method public static synthetic a(Lah/d$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lah/d$f;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()Lah/d$d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lah/d$f;->f:Lah/d;

    iget-object v1, p0, Lah/d$f;->b:Ljava/lang/String;

    iget-wide v2, p0, Lah/d$f;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lah/d;->h(Ljava/lang/String;J)Lah/d$d;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    iget-object v0, p0, Lah/d$f;->d:[Llh/y;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, LYg/c;->g(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(I)J
    .locals 3

    iget-object v0, p0, Lah/d$f;->e:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public e(I)Llh/y;
    .locals 1

    iget-object v0, p0, Lah/d$f;->d:[Llh/y;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lah/d$f;->b:Ljava/lang/String;

    return-object v0
.end method
