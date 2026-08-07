.class public abstract Lkh/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation


# instance fields
.field public final b:Z

.field public final c:Llh/e;

.field public final d:Llh/d;


# direct methods
.method public constructor <init>(ZLlh/e;Llh/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkh/a$g;->b:Z

    iput-object p2, p0, Lkh/a$g;->c:Llh/e;

    iput-object p3, p0, Lkh/a$g;->d:Llh/d;

    return-void
.end method
