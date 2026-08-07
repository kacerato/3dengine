.class public Lui/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/g;-><init>(Lui/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/g;


# direct methods
.method public constructor <init>(Lui/g;)V
    .locals 0

    iput-object p1, p0, Lui/g$a;->a:Lui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lui/e;)Lti/a;
    .locals 1

    new-instance v0, Lui/d;

    invoke-direct {v0, p1}, Lui/d;-><init>(Lui/e;)V

    return-object v0
.end method
