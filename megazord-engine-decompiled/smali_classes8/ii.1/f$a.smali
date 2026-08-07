.class public Lii/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lii/f;->b(Lui/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lii/f;


# direct methods
.method public constructor <init>(Lii/f;)V
    .locals 0

    iput-object p1, p0, Lii/f$a;->a:Lii/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lui/e;)Lti/a;
    .locals 1

    new-instance v0, Lji/b;

    invoke-direct {v0, p1}, Lji/b;-><init>(Lui/e;)V

    return-object v0
.end method
