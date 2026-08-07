.class public Lfh/f$h$a;
.super Lfh/f$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh/f$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfh/f$h;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lfh/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lfh/a;->REFUSED_STREAM:Lfh/a;

    invoke-virtual {p1, v0}, Lfh/h;->f(Lfh/a;)V

    return-void
.end method
