.class public Lah/d$b;
.super Lah/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lah/d;->q()Llh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static final synthetic e:Z


# instance fields
.field public final synthetic d:Lah/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lah/d;Llh/x;)V
    .locals 0

    iput-object p1, p0, Lah/d$b;->d:Lah/d;

    invoke-direct {p0, p2}, Lah/e;-><init>(Llh/x;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lah/d$b;->d:Lah/d;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lah/d;->n:Z

    return-void
.end method
