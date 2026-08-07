.class public Lqi/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqi/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqi/d$b;->k()Lqi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqi/d$b;


# direct methods
.method public constructor <init>(Lqi/d$b;)V
    .locals 0

    iput-object p1, p0, Lqi/d$b$a;->a:Lqi/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqi/b;)Lqi/a;
    .locals 1

    new-instance v0, Lki/n;

    invoke-direct {v0, p1}, Lki/n;-><init>(Lqi/b;)V

    return-object v0
.end method
