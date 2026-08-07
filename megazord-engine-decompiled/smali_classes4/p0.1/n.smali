.class public abstract Lp0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lt3/a;
.end annotation


# static fields
.field public static final a:Lw3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lw3/h;->a()Lw3/h$a;

    move-result-object v0

    sget-object v1, Lp0/a;->b:Lu3/a;

    invoke-virtual {v0, v1}, Lw3/h$a;->e(Lu3/a;)Lw3/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lw3/h$a;->d()Lw3/h;

    move-result-object v0

    sput-object v0, Lp0/n;->a:Lw3/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lp0/n;->a:Lw3/h;

    invoke-virtual {v0, p0, p1}, Lw3/h;->b(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;)[B
    .locals 1

    sget-object v0, Lp0/n;->a:Lw3/h;

    invoke-virtual {v0, p0}, Lw3/h;->c(Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract c()Lu0/a;
.end method
