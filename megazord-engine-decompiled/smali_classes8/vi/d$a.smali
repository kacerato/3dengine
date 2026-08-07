.class public Lvi/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi/d;-><init>(Lvi/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvi/d;


# direct methods
.method public constructor <init>(Lvi/d;)V
    .locals 0

    iput-object p1, p0, Lvi/d$a;->a:Lvi/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvi/b;)Lti/a;
    .locals 1

    new-instance v0, Lvi/a;

    invoke-direct {v0, p1}, Lvi/a;-><init>(Lvi/b;)V

    return-object v0
.end method
