.class public Lic/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTb/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/a;->e(Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-static {}, Lic/a;->b()Lic/b;

    move-result-object v0

    invoke-static {}, Lic/a;->a()LNb/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/b;->b(LNb/a;)V

    invoke-static {}, Lic/a;->b()Lic/b;

    move-result-object v0

    invoke-static {v0}, Lva/g;->g(Lva/b;)V

    return-void
.end method
