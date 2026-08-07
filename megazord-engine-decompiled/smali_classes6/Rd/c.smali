.class public abstract LRd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRd/c$a;,
        LRd/c$b;
    }
.end annotation


# static fields
.field public static final a:LRd/c;

.field public static final b:LRd/c;

.field public static final c:I = 0x0

.field public static final d:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LRd/c$b;

    invoke-direct {v0}, LRd/c$b;-><init>()V

    sput-object v0, LRd/c;->a:LRd/c;

    new-instance v0, LRd/c$a;

    invoke-direct {v0}, LRd/c$a;-><init>()V

    sput-object v0, LRd/c;->b:LRd/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(I)LRd/c;
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object p0, LRd/c;->b:LRd/c;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, LRd/c;->a:LRd/c;

    return-object p0
.end method


# virtual methods
.method public abstract a(F)F
.end method

.method public abstract b(F)F
.end method

.method public c(F)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
