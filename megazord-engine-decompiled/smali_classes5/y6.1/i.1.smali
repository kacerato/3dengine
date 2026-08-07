.class public final synthetic Ly6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Ly6/l;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;


# direct methods
.method public synthetic constructor <init>(Ly6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/i;->a:Ly6/l;

    iput-object p2, p0, Ly6/i;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Ly6/i;->a:Ly6/l;

    iget-object v1, p0, Ly6/i;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-static {v0, v1, p1, p2}, Ly6/l;->v1(Ly6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
